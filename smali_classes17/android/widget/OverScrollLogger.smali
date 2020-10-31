.class Landroid/widget/OverScrollLogger;
.super Ljava/lang/Object;
.source "OverScrollLogger.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OverScroll"

.field private static final VERBOSE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "OverScroll"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Landroid/widget/OverScrollLogger;->DEBUG:Z

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/widget/OverScrollLogger;->VERBOSE:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Landroid/widget/OverScrollLogger;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "OverScroll"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-boolean v0, Landroid/widget/OverScrollLogger;->DEBUG:Z

    if-eqz v0, :cond_f

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverScroll"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Landroid/widget/OverScrollLogger;->VERBOSE:Z

    if-eqz v0, :cond_9

    const-string v0, "OverScroll"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-boolean v0, Landroid/widget/OverScrollLogger;->VERBOSE:Z

    if-eqz v0, :cond_f

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverScroll"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method
