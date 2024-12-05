{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyN0ivlBMSDDeeildih553iH",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/Pratiksoham/Emit/blob/main/counter.v\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "id": "f_AODsL7Pb0a"
      },
      "outputs": [],
      "source": [
        "module CLA(\n",
        "    input [3:0]a,\n",
        "    input [3:0]b,\n",
        "    input cin,\n",
        "    output [3:0]sum,\n",
        "    output cout,\n",
        ");\n",
        "wire [3:0]c;\n",
        "wire [3:0]g;\n",
        "wire [3:0]p;\n",
        "assign p = a ^ b;\n",
        "assign g = a & b;\n",
        "\n",
        "assign c[0]=cin;\n",
        "assign c[1] = g[0] | (p[0] & c[0]);\n",
        "assign c[2] = g[1] | (p[1] & c[1]);\n",
        "assign c[3] = g[2] | (p[2] & c[2]);\n",
        "\n",
        "assign cout = g[3] | (p[3] & c[3]);\n",
        "\n",
        "assign sum = p ^ {c[2:0],cin}\n",
        "\n",
        "endmodule\n",
        "\n"
      ]
    },
    {
      "cell_type": "markdown",
      "source": [],
      "metadata": {
        "id": "D-goKzcUSBr8"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "module BCD_up_down_counter(\n",
        "    input wire reset,\n",
        "    input wire clk,\n",
        "    output [3:0]count,\n",
        ");\n",
        "\n",
        "always@(posedge clk or posedge reset)begin\n",
        "  if (reset)begin\n",
        "    count <= 4b'0000;\n",
        "  end else begin\n",
        "    if (up_down)begin\n",
        "      if (count= 4b'1001')begin\n",
        "        count <= 4b'0000;\n",
        "      end else begin\n",
        "        count <= count +1;\n",
        "      end\n",
        "    end else begin\n",
        "      if (count= 4b'0000')begin\n",
        "        count <= 4b'1001;\n",
        "      end else begin\n",
        "        count <= count -1;\n",
        "      end\n",
        "    end\n",
        "  end\n",
        "end\n",
        "endmodule\n",
        "\n",
        "\n",
        "\n",
        "\n",
        "\n",
        "\n",
        "\n",
        "\n",
        "endmodule\n",
        "\n"
      ],
      "metadata": {
        "id": "28B82vS2SCbL"
      },
      "execution_count": null,
      "outputs": []
    }
  ]
}