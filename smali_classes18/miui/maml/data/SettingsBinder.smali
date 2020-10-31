.class public Lmiui/maml/data/SettingsBinder;
.super Lmiui/maml/data/VariableBinder;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/SettingsBinder$Variable;,
        Lmiui/maml/data/SettingsBinder$Category;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SettingsBinder"


# instance fields
.field private mConst:Z

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iget-object v0, p0, Lmiui/maml/data/SettingsBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_26

    invoke-virtual {p0, p1}, Lmiui/maml/data/SettingsBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    const-string v0, "const"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/SettingsBinder;->mConst:Z

    :cond_26
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/SettingsBinder$Variable;
    .registers 4

    new-instance v0, Lmiui/maml/data/SettingsBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/SettingsBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p0, p1, v1}, Lmiui/maml/data/SettingsBinder$Variable;-><init>(Lmiui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/maml/data/SettingsBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/SettingsBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    invoke-virtual {p0}, Lmiui/maml/data/SettingsBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    iget-boolean v0, p0, Lmiui/maml/data/SettingsBinder;->mConst:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lmiui/maml/data/SettingsBinder;->startQuery()V

    :cond_a
    return-void
.end method

.method public startQuery()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/SettingsBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder$Variable;

    move-object v2, v1

    check-cast v2, Lmiui/maml/data/SettingsBinder$Variable;

    invoke-virtual {v2}, Lmiui/maml/data/SettingsBinder$Variable;->query()V

    goto :goto_6

    :cond_19
    invoke-virtual {p0}, Lmiui/maml/data/SettingsBinder;->onUpdateComplete()V

    return-void
.end method
