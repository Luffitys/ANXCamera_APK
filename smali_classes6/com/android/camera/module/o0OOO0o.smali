.class public final synthetic Lcom/android/camera/module/o0OOO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/module/o0OOO0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/module/o0OOO0o;

    invoke-direct {v0}, Lcom/android/camera/module/o0OOO0o;-><init>()V

    sput-object v0, Lcom/android/camera/module/o0OOO0o;->OooO00o:Lcom/android/camera/module/o0OOO0o;

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

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {p1}, Lcom/android/camera/module/DualVideoModule;->OooOo00(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    return-void
.end method
