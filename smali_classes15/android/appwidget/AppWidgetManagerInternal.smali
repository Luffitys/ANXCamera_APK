.class public abstract Landroid/appwidget/AppWidgetManagerInternal;
.super Ljava/lang/Object;
.source "AppWidgetManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHostedWidgetPackages(I)Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unlockUser(I)V
.end method
