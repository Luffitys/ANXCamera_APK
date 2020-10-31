.class Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/log/format/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDateFormat"
.end annotation


# static fields
.field private static final MILLISECONDS_RESERVE_OFFSET:I = 0x3

.field private static final MINUTE_IN_MILLISECONDS:I = 0xea60

.field private static final SECONDS_RESERVE_OFFSET:I = 0x6

.field private static final SECOND_IN_MILLISECONDS:I = 0x3e8


# instance fields
.field private iCache:Ljava/lang/StringBuilder;

.field private iCacheTime:J

.field private iCalendar:Ljava/util/Calendar;

.field private iMillisecondsSlot:J

.field private iSecondsSlot:J


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/log/format/SimpleFormatter$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;-><init>()V

    return-void
.end method

.method private appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .registers 7

    const/4 v0, 0x2

    const/16 v1, 0x30

    const/16 v2, 0xa

    if-eq p3, v0, :cond_21

    const/4 v0, 0x3

    if-eq p3, v0, :cond_e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_e
    if-ge p2, v2, :cond_16

    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_16
    const/16 v0, 0x64

    if-ge p2, v0, :cond_1d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    :goto_1d
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_21
    if-ge p2, v2, :cond_26

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    nop

    :goto_2a
    return-object p1
.end method

.method private buildCache(J)V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0, v0, v3, v4}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1, v4}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1, v4}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v2, v4}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1, v4}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/StringBuilder;J)V
    .registers 11

    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCacheTime:J

    cmp-long v0, p2, v0

    if-eqz v0, :cond_7c

    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iSecondsSlot:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x3e8

    const-wide/32 v5, 0xea60

    if-eqz v2, :cond_6d

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6d

    add-long/2addr v0, v5

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1d

    goto :goto_6d

    :cond_1d
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iMillisecondsSlot:J

    cmp-long v2, p2, v0

    const/4 v5, 0x3

    if-ltz v2, :cond_3d

    add-long/2addr v3, v0

    cmp-long v2, p2, v3

    if-ltz v2, :cond_2a

    goto :goto_3d

    :cond_2a
    sub-long v0, p2, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0, v5}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_7a

    :cond_3d
    :goto_3d
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iSecondsSlot:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v2, v1, 0x3e8

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v3, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v1, v4}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v2, v5}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iSecondsSlot:J

    mul-int/lit16 v5, v1, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iMillisecondsSlot:J

    goto :goto_7a

    :cond_6d
    :goto_6d
    invoke-direct {p0, p2, p3}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->buildCache(J)V

    div-long v0, p2, v5

    mul-long/2addr v0, v5

    iput-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iSecondsSlot:J

    div-long v0, p2, v3

    mul-long/2addr v0, v3

    iput-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iMillisecondsSlot:J

    :goto_7a
    iput-wide p2, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCacheTime:J

    :cond_7c
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method
