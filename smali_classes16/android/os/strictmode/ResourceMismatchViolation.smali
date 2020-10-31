.class public final Landroid/os/strictmode/ResourceMismatchViolation;
.super Landroid/os/strictmode/Violation;
.source "ResourceMismatchViolation.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    return-void
.end method
