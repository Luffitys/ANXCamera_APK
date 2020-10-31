.class public Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapVariableProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapVar"


# instance fields
.field private mCurSrc:Ljava/lang/String;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 11

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    invoke-static {v0, p1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_42

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_42

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_42

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    :cond_42
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    const/4 v3, 0x0

    if-nez v2, :cond_49

    move-object v2, p1

    goto :goto_4d

    :cond_49
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_4d
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    iget-object v5, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-direct {v4, v2, v5, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    :cond_5a
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    :cond_5c
    const/4 v0, 0x0

    :try_start_5d
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lmiui/maml/data/IndexedVariable;->getArr(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v0, v1

    goto :goto_7f

    :cond_76
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_7e
    .catch Ljava/lang/ClassCastException; {:try_start_5d .. :try_end_7e} :catch_80

    move-object v0, v1

    :cond_7f
    :goto_7f
    goto :goto_97

    :catch_80
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to cast as Bitmap from object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BitmapProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v1
.end method

.method public init(Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    return-void
.end method
