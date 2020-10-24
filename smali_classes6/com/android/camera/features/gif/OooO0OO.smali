.class public final synthetic Lcom/android/camera/features/gif/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/features/gif/OooO0OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/features/gif/OooO0OO;

    invoke-direct {v0}, Lcom/android/camera/features/gif/OooO0OO;-><init>()V

    sput-object v0, Lcom/android/camera/features/gif/OooO0OO;->OooO00o:Lcom/android/camera/features/gif/OooO0OO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/camera/features/gif/GifEditLayout;->OooO00o(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
