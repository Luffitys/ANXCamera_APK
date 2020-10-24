.class public final synthetic LOooO0O0/OooO0o0/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0o0/OooO00o/OooO00o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0o0/OooO00o/OooO00o;

    invoke-direct {v0}, LOooO0O0/OooO0o0/OooO00o/OooO00o;-><init>()V

    sput-object v0, LOooO0O0/OooO0o0/OooO00o/OooO00o;->OooO00o:LOooO0O0/OooO0o0/OooO00o/OooO00o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00Oo0o(Lcom/android/camera2/CameraCapabilities;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
