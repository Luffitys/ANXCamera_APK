.class public final Landroid/os/strictmode/SqliteObjectLeakedViolation;
.super Landroid/os/strictmode/Violation;
.source "SqliteObjectLeakedViolation.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/strictmode/SqliteObjectLeakedViolation;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
