.class public final synthetic Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$7-enOzxeypZYfdFYr1HzBLfj47k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$7-enOzxeypZYfdFYr1HzBLfj47k;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$7-enOzxeypZYfdFYr1HzBLfj47k;

    invoke-direct {v0}, Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$7-enOzxeypZYfdFYr1HzBLfj47k;-><init>()V

    sput-object v0, Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$7-enOzxeypZYfdFYr1HzBLfj47k;->INSTANCE:Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$7-enOzxeypZYfdFYr1HzBLfj47k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->lambda$static$0(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
