import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="searchbar"
export default class extends Controller {
  static targets = [ "form", "searchInput", "list" ]
  connect() {
  }

  submit(){
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
    fetch(url, {
      headers: { accept: 'application/json'}
    }).then((response) => response.json())
    .then(data => this.listTarget.outerHTML = data.list)
    }
}
