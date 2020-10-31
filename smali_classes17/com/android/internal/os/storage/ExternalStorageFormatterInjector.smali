.class Lcom/android/internal/os/storage/ExternalStorageFormatterInjector;
.super Ljava/lang/Object;
.source "ExternalStorageFormatterInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createProgressDialog(Landroid/content/Context;)Lmiui/app/ProgressDialog;
    .registers 3

    new-instance v0, Lmiui/app/ProgressDialog;

    sget v1, Lmiui/R$style;->Theme_DayNight_Dialog_Alert:I

    invoke-direct {v0, p0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
