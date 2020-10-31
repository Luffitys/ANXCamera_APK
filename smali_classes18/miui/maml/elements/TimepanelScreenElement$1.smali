.class Lmiui/maml/elements/TimepanelScreenElement$1;
.super Ljava/lang/Object;
.source "TimepanelScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/TimepanelScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/TimepanelScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/TimepanelScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # getter for: Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z
    invoke-static {v0}, Lmiui/maml/elements/TimepanelScreenElement;->access$000(Lmiui/maml/elements/TimepanelScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    iget-object v3, v3, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v3, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # getter for: Lmiui/maml/elements/TimepanelScreenElement;->mTimeZoneExp:Lmiui/maml/data/Expression;
    invoke-static {v3}, Lmiui/maml/elements/TimepanelScreenElement;->access$100(Lmiui/maml/elements/TimepanelScreenElement;)Lmiui/maml/data/Expression;

    move-result-object v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # getter for: Lmiui/maml/elements/TimepanelScreenElement;->mTimeZoneExp:Lmiui/maml/data/Expression;
    invoke-static {v3}, Lmiui/maml/elements/TimepanelScreenElement;->access$100(Lmiui/maml/elements/TimepanelScreenElement;)Lmiui/maml/data/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    iget-object v4, v4, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_42
    iget-object v3, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # invokes: Lmiui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;
    invoke-static {v3}, Lmiui/maml/elements/TimepanelScreenElement;->access$200(Lmiui/maml/elements/TimepanelScreenElement;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    iget-object v4, v4, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # getter for: Lmiui/maml/elements/TimepanelScreenElement;->mForceUpdate:Z
    invoke-static {v4}, Lmiui/maml/elements/TimepanelScreenElement;->access$300(Lmiui/maml/elements/TimepanelScreenElement;)Z

    move-result v4

    if-nez v4, :cond_65

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # getter for: Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;
    invoke-static {v4}, Lmiui/maml/elements/TimepanelScreenElement;->access$400(Lmiui/maml/elements/TimepanelScreenElement;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    return-void

    :cond_65
    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # setter for: Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;
    invoke-static {v4, v3}, Lmiui/maml/elements/TimepanelScreenElement;->access$402(Lmiui/maml/elements/TimepanelScreenElement;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_77
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_9e

    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    iget-object v8, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # invokes: Lmiui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;
    invoke-static {v8, v7}, Lmiui/maml/elements/TimepanelScreenElement;->access$500(Lmiui/maml/elements/TimepanelScreenElement;C)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_9b

    int-to-float v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v5, v9

    iget-object v9, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # getter for: Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I
    invoke-static {v9}, Lmiui/maml/elements/TimepanelScreenElement;->access$600(Lmiui/maml/elements/TimepanelScreenElement;)I

    move-result v9

    add-int/2addr v5, v9

    :cond_9b
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    :cond_9e
    iget-object v6, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    iget-object v6, v6, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v6}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    iget-object v6, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # getter for: Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I
    invoke-static {v6}, Lmiui/maml/elements/TimepanelScreenElement;->access$600(Lmiui/maml/elements/TimepanelScreenElement;)I

    move-result v7

    sub-int v7, v5, v7

    # setter for: Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I
    invoke-static {v6, v7}, Lmiui/maml/elements/TimepanelScreenElement;->access$702(Lmiui/maml/elements/TimepanelScreenElement;I)I

    iget-object v6, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    # getter for: Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I
    invoke-static {v6}, Lmiui/maml/elements/TimepanelScreenElement;->access$700(Lmiui/maml/elements/TimepanelScreenElement;)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/elements/TimepanelScreenElement;->descale(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/elements/TimepanelScreenElement;->setActualWidth(D)V

    iget-object v6, p0, Lmiui/maml/elements/TimepanelScreenElement$1;->this$0:Lmiui/maml/elements/TimepanelScreenElement;

    invoke-virtual {v6}, Lmiui/maml/elements/TimepanelScreenElement;->requestUpdate()V

    return-void
.end method
