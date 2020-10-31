.class public Lmiui/maml/data/VariableBinderManager;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"

# interfaces
.implements Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"


# instance fields
.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mVariableBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/data/VariableBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    iput-object p2, p0, Lmiui/maml/data/VariableBinderManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz p1, :cond_11

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinderManager;->load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    :cond_11
    return-void
.end method

.method private static createBinder(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/VariableBinderManager;)Lmiui/maml/data/VariableBinder;
    .registers 6

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ContentProviderBinder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lmiui/maml/data/ContentProviderBinder;

    invoke-direct {v2, p0, p1}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object v1, v2

    goto :goto_6d

    :cond_14
    const-string v2, "WebServiceBinder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v2, Lmiui/maml/data/WebServiceBinder;

    invoke-direct {v2, p0, p1}, Lmiui/maml/data/WebServiceBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object v1, v2

    goto :goto_6d

    :cond_23
    const-string v2, "SensorBinder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    new-instance v2, Lmiui/maml/data/SensorBinder;

    invoke-direct {v2, p0, p1}, Lmiui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object v1, v2

    goto :goto_6d

    :cond_32
    const-string v2, "LocationBinder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    new-instance v2, Lmiui/maml/data/LocationBinder;

    invoke-direct {v2, p0, p1}, Lmiui/maml/data/LocationBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object v1, v2

    goto :goto_6d

    :cond_41
    const-string v2, "BroadcastBinder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    new-instance v2, Lmiui/maml/data/BroadcastBinder;

    invoke-direct {v2, p0, p1}, Lmiui/maml/data/BroadcastBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object v1, v2

    goto :goto_6d

    :cond_50
    const-string v2, "FileBinder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    new-instance v2, Lmiui/maml/data/FileBinder;

    invoke-direct {v2, p0, p1}, Lmiui/maml/data/FileBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object v1, v2

    goto :goto_6d

    :cond_5f
    const-string v2, "SettingsBinder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    new-instance v2, Lmiui/maml/data/SettingsBinder;

    invoke-direct {v2, p0, p1}, Lmiui/maml/data/SettingsBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object v1, v2

    :cond_6d
    :goto_6d
    if-eqz v1, :cond_72

    invoke-virtual {v1, p2}, Lmiui/maml/data/VariableBinder;->setQueryCompleteListener(Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    :cond_72
    return-object v1
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    if-eqz p1, :cond_6

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinderManager;->loadBinders(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-void

    :cond_6
    const-string v0, "VariableBinderManager"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadBinders(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 8

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2a

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-static {v2, p2, p0}, Lmiui/maml/data/VariableBinderManager;->createBinder(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/VariableBinderManager;)Lmiui/maml/data/VariableBinder;

    move-result-object v3

    if-eqz v3, :cond_27

    iget-object v4, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    return-void
.end method


# virtual methods
.method public final acceptVisitor(Lmiui/maml/data/VariableBinderVisitor;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder;

    invoke-virtual {v1, p1}, Lmiui/maml/data/VariableBinder;->accept(Lmiui/maml/data/VariableBinderVisitor;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public addContentProviderBinder(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .registers 4

    new-instance v0, Lmiui/maml/util/TextFormatter;

    iget-object v1, p0, Lmiui/maml/data/VariableBinderManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/maml/data/VariableBinderManager;->addContentProviderBinder(Lmiui/maml/util/TextFormatter;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .registers 5

    new-instance v0, Lmiui/maml/util/TextFormatter;

    iget-object v1, p0, Lmiui/maml/data/VariableBinderManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/maml/data/VariableBinderManager;->addContentProviderBinder(Lmiui/maml/util/TextFormatter;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Lmiui/maml/util/TextFormatter;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .registers 4

    new-instance v0, Lmiui/maml/data/ContentProviderBinder;

    iget-object v1, p0, Lmiui/maml/data/VariableBinderManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v1}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {v0, p0}, Lmiui/maml/data/ContentProviderBinder;->setQueryCompleteListener(Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    iget-object v1, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lmiui/maml/data/ContentProviderBinder$Builder;

    invoke-direct {v1, v0}, Lmiui/maml/data/ContentProviderBinder$Builder;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    return-object v1
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;
    .registers 5

    iget-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder;

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v1

    :cond_1d
    goto :goto_6

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public finish()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder;

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinder;->finish()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder;

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinder;->init()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onQueryCompleted(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder;

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinder;->getDependency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinder;->startQuery()V

    :cond_2c
    goto :goto_d

    :cond_2d
    return-void
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder;

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinder;->pause()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder;

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinder;->resume()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public tick()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder;

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinder;->tick()V

    goto :goto_6

    :cond_16
    return-void
.end method
