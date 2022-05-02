import { describe, it, expect } from 'vitest'

import { mount } from '@vue/test-utils'
import Reprimand from '../Reprimand.vue'

describe('Reprimand', () => {
  it('renders properly', () => {
    const wrapper = mount(Reprimand)
    expect(wrapper.text()).toContain('Make sure you Google stuff yourself first.')
  })
})
