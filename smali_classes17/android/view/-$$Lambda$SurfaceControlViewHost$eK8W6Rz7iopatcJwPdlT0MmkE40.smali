.class public final synthetic Landroid/view/-$$Lambda$SurfaceControlViewHost$eK8W6Rz7iopatcJwPdlT0MmkE40;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/-$$Lambda$SurfaceControlViewHost$eK8W6Rz7iopatcJwPdlT0MmkE40;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/-$$Lambda$SurfaceControlViewHost$eK8W6Rz7iopatcJwPdlT0MmkE40;

    invoke-direct {v0}, Landroid/view/-$$Lambda$SurfaceControlViewHost$eK8W6Rz7iopatcJwPdlT0MmkE40;-><init>()V

    sput-object v0, Landroid/view/-$$Lambda$SurfaceControlViewHost$eK8W6Rz7iopatcJwPdlT0MmkE40;->INSTANCE:Landroid/view/-$$Lambda$SurfaceControlViewHost$eK8W6Rz7iopatcJwPdlT0MmkE40;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finished(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-static {p1}, Landroid/view/SurfaceControlViewHost;->lambda$relayout$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
