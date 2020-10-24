.class public final synthetic Lcom/android/camera/fragment/dialog/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/fragment/dialog/OooO0OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/dialog/OooO0OO;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/OooO0OO;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/dialog/OooO0OO;->OooO00o:Lcom/android/camera/fragment/dialog/OooO0OO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    check-cast p2, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    invoke-static {p1, p2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->OooOOO0(Lcom/android/camera/fragment/fullscreen/ShareInfo;Lcom/android/camera/fragment/fullscreen/ShareInfo;)I

    move-result p0

    return p0
.end method
