.class public final synthetic Lcom/android/camera/fragment/vv/OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/fragment/vv/OooO0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/vv/OooO0o;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/OooO0o;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/vv/OooO0o;->OooO00o:Lcom/android/camera/fragment/vv/OooO0o;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->OooO0oo(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
