.class Landroid/os/BinderProxy$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "BinderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static final sNativeFinalizer:J

.field public static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    # invokes: Landroid/os/BinderProxy;->getNativeFinalizer()J
    invoke-static {}, Landroid/os/BinderProxy;->access$600()J

    move-result-wide v0

    sput-wide v0, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Landroid/os/BinderProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sget-wide v4, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/os/BinderProxy$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
