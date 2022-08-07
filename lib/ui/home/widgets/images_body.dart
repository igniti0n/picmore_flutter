import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:picmore/common/error_handling/base/localized_exception.dart';
import 'package:picmore/common/models/unsplash_image.dart';
import 'package:picmore/ui/home/presenter/images_request_presenter.dart';
import 'package:picmore/ui/home/widgets/image_list_item.dart';

class ImagesBody extends ConsumerStatefulWidget {
  const ImagesBody();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ImagesBodyState();
}

class _ImagesBodyState extends ConsumerState<ImagesBody> {
  late final PagingController<int, UnsplashImage> _pagingController;

  @override
  void initState() {
    _pagingController = PagingController(firstPageKey: 0);
    _pagingController.addPageRequestListener((pageKey) {
      ref.read(imagesRequestPresenter.notifier).fetchImages(pageKey);
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<ImagesRequestPresenter>(imagesRequestPresenter,
        (_, presenter) => onPreseterStateChanged(presenter));

    return PagedListView<int, UnsplashImage>(
      pagingController: _pagingController,
      itemExtent: 400,
      builderDelegate: PagedChildBuilderDelegate<UnsplashImage>(
        itemBuilder: (ctx, image, _) => ImageListItem(image: image),
        firstPageErrorIndicatorBuilder: (_) => ListError(
            onTryAgain: () => _pagingController.retryLastFailedRequest()),
        newPageErrorIndicatorBuilder: (_) => ListError(
            onTryAgain: () => _pagingController.retryLastFailedRequest()),
        firstPageProgressIndicatorBuilder: (_) => const Center(
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 1.4,
          ),
        ),
        newPageProgressIndicatorBuilder: (_) => const Center(
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 1.4,
          ),
        ),
        noItemsFoundIndicatorBuilder: (_) => const Center(
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 1.4,
          ),
        ),
        noMoreItemsIndicatorBuilder: (_) => const Center(
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 1.4,
          ),
        ),
      ),
    );
  }

  void onPreseterStateChanged(ImagesRequestPresenter presenter) {
    final nextPageKey = _pagingController.nextPageKey ?? 0;
    presenter.state.maybeWhen(
      success: (result) {
        _pagingController.appendPage(result, nextPageKey + result.length);
      },
      orElse: () => _pagingController.error = ImagesFetchingException(),
    );
  }
}

class ListError extends StatelessWidget {
  const ListError({required this.onTryAgain});
  final Function() onTryAgain;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Retry request',
            textAlign: TextAlign.center,
          ),
          IconButton(
            onPressed: onTryAgain,
            icon: const Icon(
              Icons.replay_outlined,
            ),
          )
        ],
      ),
    );
  }
}
