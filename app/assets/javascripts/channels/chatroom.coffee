App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    #$('#message-box').append data.msg
    alert data.msg
