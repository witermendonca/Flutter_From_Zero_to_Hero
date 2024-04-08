import 'package:from_zero_to_hero/features/products/data/product_repository_impl.dart';
import 'package:from_zero_to_hero/features/products/domain/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'product_provider.g.dart';

@riverpod
FutureOr<List<Product>> productsByCategory(ProductsByCategoryRef ref,
    {required String category}) async {
  final products =
      await ref.watch(productRepositoryProvider).findAllByCategories(category);
  return products;
}
