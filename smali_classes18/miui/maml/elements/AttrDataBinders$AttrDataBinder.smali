.class public Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AttrDataBinders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttrDataBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
    }
.end annotation


# instance fields
.field protected mAttr:Ljava/lang/String;

.field private mBinder:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

.field protected mData:Ljava/lang/String;

.field protected mTarget:Ljava/lang/String;

.field protected mVars:Lmiui/maml/data/ContextVariables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/ContextVariables;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "target"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    const-string v0, "attr"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    const-string v0, "data"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lmiui/maml/data/ContextVariables;

    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->createBinder(Ljava/lang/String;)Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    if-eqz v0, :cond_42

    return-void

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid AttrDataBinder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createBinder(Ljava/lang/String;)Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V

    return-object v0

    :cond_16
    const-string v0, "paras"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "params"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_60

    :cond_27
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V

    return-object v0

    :cond_35
    const-string v0, "bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V

    return-object v0

    :cond_43
    const-string v0, "src"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V

    return-object v0

    :cond_51
    const-string v0, "srcid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V

    return-object v0

    :cond_5f
    return-object v1

    :cond_60
    :goto_60
    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V

    return-object v0
.end method


# virtual methods
.method public bind(Lmiui/maml/elements/ElementGroup;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;->bind(Lmiui/maml/elements/ScreenElement;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_10

    const/4 v1, 0x1

    return v1

    :cond_f
    goto :goto_14

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    const/4 v0, 0x0

    return v0
.end method
