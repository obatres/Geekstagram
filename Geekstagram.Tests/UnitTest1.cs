using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Geekstagram.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestCorrectEmailFormats()
        {
            Assert.IsTrue(Prueba1.ValidarEmail("a@b.c"));
            Assert.IsTrue(Prueba1.ValidarEmail("test@domain.com"));
            Assert.IsTrue(Prueba1.ValidarEmail("test.with.dots@domain.com"));
            Assert.IsTrue(Prueba1.ValidarEmail("abcdefghijklmnoprstuvwxyz0123456789.!#$%&'*+-/=?^_`{|}~@exhaustive.test"));
        }

        [TestMethod]
        public void TestIncorrectCorrectEmailFormats()
        {
            Assert.IsFalse(Prueba1.ValidarEmail("this is not an email"));
            Assert.IsFalse(Prueba1.ValidarEmail("@b.c"));
            Assert.IsFalse(Prueba1.ValidarEmail("test@domain@com"));
            Assert.IsFalse(Prueba1.ValidarEmail(".test.with.wrapping.dots.@domain.com"));
            Assert.IsFalse(Prueba1.ValidarEmail("<::>@fail.test"));
            Assert.IsFalse(Prueba1.ValidarEmail("test.with.áccent@fail.test"));
        }
    }
}
