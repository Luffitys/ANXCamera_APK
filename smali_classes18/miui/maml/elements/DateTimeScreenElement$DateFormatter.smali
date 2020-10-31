.class Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;
.super Ljava/lang/Object;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/DateTimeScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateFormatter"
.end annotation


# instance fields
.field private mCalendar:Lmiui/date/Calendar;

.field private mCurDay:I

.field private mLunarDate:Ljava/lang/String;

.field private mOldFormat:Ljava/lang/String;

.field private mPreValue:J

.field private mText:Ljava/lang/String;

.field private mTextFormatter:Lmiui/maml/util/TextFormatter;

.field private mTimeZoneExp:Lmiui/maml/data/Expression;

.field private mValueExp:Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/elements/DateTimeScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V
    .registers 6

    iput-object p1, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lmiui/maml/elements/DateTimeScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    iput-object p2, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lmiui/maml/util/TextFormatter;

    iput-object p3, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lmiui/maml/data/Expression;

    iput-object p4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mTimeZoneExp:Lmiui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lmiui/maml/util/TextFormatter;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    iget-object v1, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lmiui/maml/elements/DateTimeScreenElement;

    invoke-virtual {v2, v1}, Lmiui/maml/elements/DateTimeScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v1

    double-to-long v1, v1

    goto :goto_1e

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_1e
    iget-object v3, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mOldFormat:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-wide v3, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mPreValue:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-gez v3, :cond_37

    iget-object v3, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    return-object v3

    :cond_37
    iput-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mOldFormat:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v3, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v3, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mTimeZoneExp:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    :cond_55
    const-string v3, "NNNN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_bb

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    iget v6, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    if-eq v4, v6, :cond_b5

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const-string v6, "N\u6708e"

    invoke-virtual {v4, v6}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const-string v6, "t"

    invoke-virtual {v4, v6}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_95

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    :cond_95
    iget-object v6, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v6, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get lunar date:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DateTimeScreenElement"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_bb
    iget-object v3, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v3, v0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    iput-wide v1, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mPreValue:J

    return-object v3
.end method

.method public resetCalendar()V
    .registers 2

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    return-void
.end method
