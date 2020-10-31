.class public Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;
.super Ljava/lang/Object;
.source "Android_View_View_class.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_View_View_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizedValue"
.end annotation


# instance fields
.field public mHasInitViewSequenceStates:Z

.field public mHorizontalState:I

.field public mTagChildrenSequenceState:Z

.field public mVerticalState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    iput v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    iput-boolean v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mTagChildrenSequenceState:Z

    iput-boolean v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    return-void
.end method
