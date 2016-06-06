App.messages = App.cable.subscriptions.create('DataChannel', {  
  received: function(data) {
    return $('#data').append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    return "<p> <b>" + data.text + ": </b>" + data.keyword + "</p>";
  }
});