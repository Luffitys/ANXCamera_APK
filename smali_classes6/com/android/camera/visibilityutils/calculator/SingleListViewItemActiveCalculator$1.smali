.class synthetic Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $SwitchMap$com$android$camera$visibilityutils$scroll_utils$ScrollDirectionDetector$ScrollDirection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->values()[Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$1;->$SwitchMap$com$android$camera$visibilityutils$scroll_utils$ScrollDirectionDetector$ScrollDirection:[I

    :try_start_0
    sget-object v1, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->UP:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$1;->$SwitchMap$com$android$camera$visibilityutils$scroll_utils$ScrollDirectionDetector$ScrollDirection:[I

    sget-object v1, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->DOWN:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
