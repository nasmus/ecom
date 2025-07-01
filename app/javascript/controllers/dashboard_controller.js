import { Controller } from "@hotwired/stimulus"

import {Chart, registerables } from 'chart.js'

Chart.register(...registerables)

// Connects to data-controller="dashboard"
export default class extends Controller {
  connect() {
    console.log("Dashboard controller connected");
  }
}
