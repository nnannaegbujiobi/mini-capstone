/* global axios */

var productTemplate = document.querySelector("#product-card");
var productRow = document.querySelector(".row");

// productRow.appendChild(productTemplate.content.cloneNode(true));
// productRow.appendChild(productTemplate.content.cloneNode(true));
// productRow.appendChild(productTemplate.content.cloneNode(true));
// productRow.appendChild(productTemplate.content.cloneNode(true));
// productRow.appendChild(productTemplate.content.cloneNode(true));
// productRow.appendChild(productTemplate.content.cloneNode(true));

axios.get("http://localhost:3000/api/products").then(function(response) {
  var products = response.data;
  console.log(products);
  products.forEach(function(product) {
    var productClone = productTemplate.content.cloneNode(true);
    // productClone.querySelector(".card-img-top").src = product.image;
    productClone.querySelector(".card-title").innerText = product.title;
    productRow.appendChild(productClone);
  });
});