abstract class MessagesRepository {
  // funcion para enviar mensajes y gaurdar en la base de datos
  Future<void> sendMessage(
    String chatId,
    String message,
    String date,
    String sentyBy,
  );
}
