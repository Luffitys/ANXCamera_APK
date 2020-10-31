.class public Landroid/view/inspector/StaticInspectionCompanionProvider;
.super Ljava/lang/Object;
.source "StaticInspectionCompanionProvider.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanionProvider;


# static fields
.field private static final COMPANION_SUFFIX:Ljava/lang/String; = "$InspectionCompanion"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide(Ljava/lang/Class;)Landroid/view/inspector/InspectionCompanion;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/view/inspector/InspectionCompanion<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$InspectionCompanion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/view/inspector/InspectionCompanion;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inspector/InspectionCompanion;
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_2d} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_2d} :catch_4a
    .catch Ljava/lang/InstantiationException; {:try_start_17 .. :try_end_2d} :catch_2f

    return-object v3

    :cond_2e
    return-object v1

    :catch_2f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_46

    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_40

    move-object v3, v2

    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_40
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_46
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    :catch_4a
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_51
    move-exception v2

    return-object v1
.end method
