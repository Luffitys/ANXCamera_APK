.class public Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "Android_View_ViewGroup_class.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_View_ViewGroup_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory$Holder;
    }
.end annotation


# instance fields
.field private Android_View_ViewGroup_class:Lcom/miui/internal/variable/Android_View_ViewGroup_class;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    const-string v0, "Android_View_ViewGroup_class"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    iput-object v1, p0, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->Android_View_ViewGroup_class:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_View_ViewGroup_class$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;
    .registers 1

    sget-object v0, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory$Holder;->INSTANCE:Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->Android_View_ViewGroup_class:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    return-object v0
.end method
