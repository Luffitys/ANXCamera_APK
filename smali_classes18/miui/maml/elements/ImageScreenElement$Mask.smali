.class Lmiui/maml/elements/ImageScreenElement$Mask;
.super Lmiui/maml/elements/ImageScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ImageScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mask"
.end annotation


# instance fields
.field private mAlignAbsolute:Z

.field final synthetic this$0:Lmiui/maml/elements/ImageScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->this$0:Lmiui/maml/elements/ImageScreenElement;

    invoke-direct {p0, p2, p3}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const-string p1, "align"

    invoke-virtual {p0, p2, p1}, Lmiui/maml/elements/ImageScreenElement$Mask;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "absolute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->mAlignAbsolute:Z

    :cond_16
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public final isAlignAbsolute()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->mAlignAbsolute:Z

    return v0
.end method
