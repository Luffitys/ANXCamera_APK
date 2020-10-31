.class public Lcom/miui/internal/log/format/SimpleFormatter;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"

# interfaces
.implements Lcom/miui/internal/log/format/Formatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;,
        Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;,
        Lcom/miui/internal/log/format/SimpleFormatter$StringBuilderWriter;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELIMITER:Ljava/lang/String; = " - "


# instance fields
.field private mThreadCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/internal/log/format/SimpleFormatter$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/log/format/SimpleFormatter$1;-><init>(Lcom/miui/internal/log/format/SimpleFormatter;)V

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter;->mThreadCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private doFormat(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 13

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter;->mThreadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;

    iget-object v1, v0, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;->out:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, v0, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;->dateFormat:Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;

    invoke-virtual {v2, v1, p3, p4}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->format(Ljava/lang/StringBuilder;J)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/miui/internal/log/Level;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_42

    invoke-interface {p7, v1}, Lcom/miui/internal/log/message/Message;->format(Ljava/lang/Appendable;)V

    goto :goto_45

    :cond_42
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_51

    iget-object v2, v0, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;->printer:Ljava/io/PrintWriter;

    invoke-virtual {p8, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->trimToSize()V

    :cond_5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public format(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)Ljava/lang/String;
    .registers 16

    invoke-interface {p6}, Lcom/miui/internal/log/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/miui/internal/log/format/SimpleFormatter;->doFormat(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 17

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/miui/internal/log/format/SimpleFormatter;->doFormat(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
