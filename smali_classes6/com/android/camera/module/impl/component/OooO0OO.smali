.class public final synthetic Lcom/android/camera/module/impl/component/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/module/impl/component/OooO0OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/OooO0OO;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/OooO0OO;-><init>()V

    sput-object v0, Lcom/android/camera/module/impl/component/OooO0OO;->OooO00o:Lcom/android/camera/module/impl/component/OooO0OO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooOoo(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method
