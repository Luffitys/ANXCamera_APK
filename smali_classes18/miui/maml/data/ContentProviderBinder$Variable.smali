.class Lmiui/maml/data/ContentProviderBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# static fields
.field public static final BLOB_BITMAP:I = 0x3e9


# instance fields
.field public mBlocked:Z

.field public mColumn:Ljava/lang/String;

.field private mImageVar:Lmiui/maml/elements/ImageScreenElement;

.field private mNoImageElement:Z

.field public mRow:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    const-string v0, "row"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    return-void
.end method


# virtual methods
.method public getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lmiui/maml/elements/ImageScreenElement;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ImageScreenElement;

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lmiui/maml/elements/ImageScreenElement;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    :cond_19
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lmiui/maml/elements/ImageScreenElement;

    return-object v0
.end method

.method protected parseType(Ljava/lang/String;)I
    .registers 5

    invoke-super {p0, p1}, Lmiui/maml/data/VariableBinder$Variable;->parseType(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mTypeStr:Ljava/lang/String;

    const-string v2, "blob.bitmap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0x3e9

    goto :goto_14

    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    :goto_14
    return v0
.end method

.method public setNull(Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_12

    :cond_f
    invoke-virtual {p0, v1}, Lmiui/maml/data/ContentProviderBinder$Variable;->set(Ljava/lang/Object;)V

    :goto_12
    return-void
.end method
