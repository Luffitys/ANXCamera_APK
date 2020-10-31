.class public Lmiui/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/Log$FullFacade;,
        Lmiui/util/Log$Facade;,
        Lmiui/util/Log$FullLoggerInstance;,
        Lmiui/util/Log$FileLoggerInstance;,
        Lmiui/util/Log$LogcatLoggerInstance;,
        Lmiui/util/Log$DumpLogReceiver;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getFileLogger()Lmiui/util/Log$Facade;
    .registers 1

    sget-object v0, Lmiui/util/Log$FileLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    return-object v0
.end method

.method public static getFullLogger()Lmiui/util/Log$Facade;
    .registers 1

    sget-object v0, Lmiui/util/Log$FullLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    return-object v0
.end method

.method public static getLogcatLogger()Lmiui/util/Log$Facade;
    .registers 1

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
