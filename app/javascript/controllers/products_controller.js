import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="products"
export default class extends Controller {
  static values = { size: String, product: Object }
  addToCart(){
    console.log("product", this.productValue)
  }
  selectSize(){
    this.sizeValue = e.target.value
    const selectSizeEl = document.getElementById("select-size")
    selectSizeEl.innerText = `Selected size: ${this.sizeValue}`
  }
}
