import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['select', 'timeField', 'countField'];

  connect() {
    this.toggle();
  }

  toggle() {
    const value = this.selectTarget.value;

    if (value === 'timed') {
      this.timeFieldTarget.classList.remove('d-none');
      this.countFieldTarget.classList.add('d-none');
    } else {
      this.timeFieldTarget.classList.add('d-none');
      this.countFieldTarget.classList.remove('d-none');
    }
  }
}
