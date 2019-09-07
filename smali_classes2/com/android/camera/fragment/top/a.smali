.class public final synthetic Lcom/android/camera/fragment/top/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/top/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/top/a;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/a;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/top/a;->INSTANCE:Lcom/android/camera/fragment/top/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method
