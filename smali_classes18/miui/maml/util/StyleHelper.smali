.class public Lmiui/maml/util/StyleHelper;
.super Ljava/lang/Object;
.source "StyleHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;
    .registers 5

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-eqz p2, :cond_11

    invoke-virtual {p2, p1}, Lmiui/maml/StylesManager$Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    if-eqz v0, :cond_15

    move-object v1, v0

    goto :goto_17

    :cond_15
    const-string v1, ""

    :goto_17
    return-object v1
.end method
