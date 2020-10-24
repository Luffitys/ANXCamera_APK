.class public Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SHOW_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "ScrollDirectionDetector"


# instance fields
.field private mOldFirstVisibleItem:I

.field private mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

.field private mOldTop:I

.field private final mOnDetectScrollListener:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    iput-object p1, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOnDetectScrollListener:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;

    return-void
.end method

.method private onScrollDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    sget-object v1, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->DOWN:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    iget-object p0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOnDetectScrollListener:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;

    invoke-interface {p0, v1}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;->onScrollDirectionChanged(Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;)V

    :cond_0
    return-void
.end method

.method private onScrollUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    sget-object v1, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->UP:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    iget-object p0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOnDetectScrollListener:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;

    invoke-interface {p0, v1}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;->onScrollDirectionChanged(Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDetectedListScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    iget p1, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldFirstVisibleItem:I

    if-ne p2, p1, :cond_2

    iget p1, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldTop:I

    if-le v0, p1, :cond_1

    goto :goto_1

    :cond_1
    if-ge v0, p1, :cond_4

    goto :goto_2

    :cond_2
    if-ge p2, p1, :cond_3

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->onScrollUp()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->onScrollDown()V

    :cond_4
    :goto_3
    iput v0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldTop:I

    iput p2, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldFirstVisibleItem:I

    return-void
.end method
