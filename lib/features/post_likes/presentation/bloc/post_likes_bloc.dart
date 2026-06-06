import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'post_likes_event.dart';
part 'post_likes_state.dart';

class PostLikesBloc extends Bloc<PostLikesEvent, PostLikesState> {
  PostLikesBloc() : super(PostLikesInitial()) {
    on<PostLikesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
