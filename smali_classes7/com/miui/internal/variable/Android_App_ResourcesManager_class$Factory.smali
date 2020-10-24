.class public Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source ""


# instance fields
.field private Android_App_ResourcesManager_class:Lcom/miui/internal/variable/Android_App_ResourcesManager_class;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    const-string v0, "Android_App_ResourcesManager_class"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/AbsClassFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_App_ResourcesManager_class;

    iput-object v0, p0, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;->Android_App_ResourcesManager_class:Lcom/miui/internal/variable/Android_App_ResourcesManager_class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_App_ResourcesManager_class$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;
    .locals 1

    sget-object v0, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory$Holder;->INSTANCE:Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_App_ResourcesManager_class;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;->Android_App_ResourcesManager_class:Lcom/miui/internal/variable/Android_App_ResourcesManager_class;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;->get()Lcom/miui/internal/variable/Android_App_ResourcesManager_class;

    move-result-object p0

    return-object p0
.end method
