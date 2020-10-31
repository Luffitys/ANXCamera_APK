.class public final synthetic Lcom/android/internal/content/om/-$$Lambda$OverlayConfig$bPcIgkiZP3FiPOvGMosWxnh9KGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/content/om/-$$Lambda$OverlayConfig$bPcIgkiZP3FiPOvGMosWxnh9KGA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/content/om/-$$Lambda$OverlayConfig$bPcIgkiZP3FiPOvGMosWxnh9KGA;

    invoke-direct {v0}, Lcom/android/internal/content/om/-$$Lambda$OverlayConfig$bPcIgkiZP3FiPOvGMosWxnh9KGA;-><init>()V

    sput-object v0, Lcom/android/internal/content/om/-$$Lambda$OverlayConfig$bPcIgkiZP3FiPOvGMosWxnh9KGA;->INSTANCE:Lcom/android/internal/content/om/-$$Lambda$OverlayConfig$bPcIgkiZP3FiPOvGMosWxnh9KGA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    check-cast p2, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    invoke-static {p1, p2}, Lcom/android/internal/content/om/OverlayConfig;->lambda$static$0(Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;)I

    move-result p1

    return p1
.end method
