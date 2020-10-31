.class public final synthetic Lcom/android/internal/app/-$$Lambda$IOmkUXVV-O6oCsnLP2DU7_B80DY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/app/-$$Lambda$IOmkUXVV-O6oCsnLP2DU7_B80DY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/app/-$$Lambda$IOmkUXVV-O6oCsnLP2DU7_B80DY;

    invoke-direct {v0}, Lcom/android/internal/app/-$$Lambda$IOmkUXVV-O6oCsnLP2DU7_B80DY;-><init>()V

    sput-object v0, Lcom/android/internal/app/-$$Lambda$IOmkUXVV-O6oCsnLP2DU7_B80DY;->INSTANCE:Lcom/android/internal/app/-$$Lambda$IOmkUXVV-O6oCsnLP2DU7_B80DY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method
