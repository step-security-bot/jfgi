/** @format */

import { h } from "preact";
import { shallow } from "enzyme";

import Header from "../src/components/Header";

describe("Test the Header Component", () => {
  test("Header renders the title", () => {
    const context = shallow(<Header />);
    expect(context.find("p").text()).toBe("Header Component");
  });
});
