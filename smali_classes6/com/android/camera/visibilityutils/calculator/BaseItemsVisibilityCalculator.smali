.class public abstract Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;
.implements Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;


# static fields
.field private static final SHOW_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseItemsVisibilityCalculator"


# instance fields
.field private final mScrollDirectionDetector:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;

    invoke-direct {v0, p0}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;-><init>(Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;)V

    iput-object v0, p0, Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;->mScrollDirectionDetector:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;

    return-void
.end method

.method private scrollStateStr(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const-string p0, "SCROLL_STATE_FLING"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong data, scrollState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "SCROLL_STATE_TOUCH_SCROLL"

    return-object p0

    :cond_2
    const-string p0, "SCROLL_STATE_IDLE"

    return-object p0
.end method


# virtual methods
.method public onScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;III)V
    .locals 0

    iget-object p3, p0, Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;->mScrollDirectionDetector:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;

    invoke-virtual {p3, p1, p2}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->onDetectedListScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;I)V

    const/4 p2, 0x1

    if-eq p4, p2, :cond_0

    const/4 p2, 0x2

    if-eq p4, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;->onStateTouchScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;)V

    :goto_0
    return-void
.end method

.method protected abstract onStateFling(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;)V
.end method

.method protected abstract onStateTouchScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;)V
.end method
