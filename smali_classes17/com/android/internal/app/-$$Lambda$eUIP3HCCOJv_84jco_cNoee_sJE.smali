.class public final synthetic Lcom/android/internal/app/-$$Lambda$eUIP3HCCOJv_84jco_cNoee_sJE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/app/-$$Lambda$eUIP3HCCOJv_84jco_cNoee_sJE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/app/-$$Lambda$eUIP3HCCOJv_84jco_cNoee_sJE;

    invoke-direct {v0}, Lcom/android/internal/app/-$$Lambda$eUIP3HCCOJv_84jco_cNoee_sJE;-><init>()V

    sput-object v0, Lcom/android/internal/app/-$$Lambda$eUIP3HCCOJv_84jco_cNoee_sJE;->INSTANCE:Lcom/android/internal/app/-$$Lambda$eUIP3HCCOJv_84jco_cNoee_sJE;

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

    check-cast p1, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method
