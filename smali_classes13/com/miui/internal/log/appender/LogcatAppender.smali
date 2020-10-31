.class public Lcom/miui/internal/log/appender/LogcatAppender;
.super Ljava/lang/Object;
.source "LogcatAppender.java"

# interfaces
.implements Lcom/miui/internal/log/appender/Appender;


# instance fields
.field private mThreadCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/internal/log/appender/LogcatAppender$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/log/appender/LogcatAppender$1;-><init>(Lcom/miui/internal/log/appender/LogcatAppender;)V

    iput-object v0, p0, Lcom/miui/internal/log/appender/LogcatAppender;->mThreadCache:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)V
    .registers 18

    move-object v8, p0

    iget-object v0, v8, Lcom/miui/internal/log/appender/LogcatAppender;->mThreadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v10, p6

    invoke-interface {v10, v9}, Lcom/miui/internal/log/message/Message;->format(Ljava/lang/Appendable;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p6 .. p6}, Lcom/miui/internal/log/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/miui/internal/log/appender/LogcatAppender;->append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_32

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->trimToSize()V

    :cond_32
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    sget-object v0, Lcom/miui/internal/log/appender/LogcatAppender$2;->$SwitchMap$com$miui$internal$log$Level:[I

    invoke-virtual {p5}, Lcom/miui/internal/log/Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    goto :goto_48

    :pswitch_c
    if-nez p7, :cond_12

    invoke-static {p2, p6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_12
    invoke-static {p2, p6, p7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :pswitch_16
    if-nez p7, :cond_1c

    invoke-static {p2, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_1c
    invoke-static {p2, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :pswitch_20
    if-nez p7, :cond_26

    invoke-static {p2, p6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_26
    invoke-static {p2, p6, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :pswitch_2a
    if-nez p7, :cond_30

    invoke-static {p2, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_30
    invoke-static {p2, p6, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :pswitch_34
    if-nez p7, :cond_3a

    invoke-static {p2, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_3a
    invoke-static {p2, p6, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :pswitch_3e
    if-nez p7, :cond_44

    invoke-static {p2, p6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_44
    invoke-static {p2, p6, p7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_34
        :pswitch_2a
        :pswitch_20
        :pswitch_16
        :pswitch_c
    .end packed-switch
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public getFormatter()Lcom/miui/internal/log/format/Formatter;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public setFormatter(Lcom/miui/internal/log/format/Formatter;)V
    .registers 2

    return-void
.end method
