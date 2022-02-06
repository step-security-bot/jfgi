/** @format */
import { h, render, Component } from "preact";

type InformationProps = Record<string, never>;

function Information(props: InformationProps): JSX.Element {
  return (
    <>
      <p>Information Component</p>
    </>
  );
}

export default Information;
