abstract class ToDoStates {}

class InitialState extends ToDoStates {}

class InsertLoadingState extends ToDoStates {}

class InsertSuccessState extends ToDoStates {}

class InsertFailureState extends ToDoStates {}

class UpdateLoadingState extends ToDoStates {}

class UpdateSuccessState extends ToDoStates {}

class UpdateFailureState extends ToDoStates {}

class DeleteLoadingState extends ToDoStates {}

class DeleteSuccessState extends ToDoStates {}

class DeleteFailureState extends ToDoStates {}

class GetLoadingState extends ToDoStates {}

class GetSuccessState extends ToDoStates {}

class GetFailureState extends ToDoStates {}
