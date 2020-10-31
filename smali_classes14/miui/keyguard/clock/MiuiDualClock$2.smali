.class Lmiui/keyguard/clock/MiuiDualClock$2;
.super Landroid/os/AsyncTask;
.source "MiuiDualClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/keyguard/clock/MiuiDualClock;->updateLocalCity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/keyguard/clock/MiuiDualClock;


# direct methods
.method constructor <init>(Lmiui/keyguard/clock/MiuiDualClock;)V
    .registers 2

    iput-object p1, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/keyguard/clock/MiuiDualClock$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 12

    const-string v0, "MiuiDualClock"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    # getter for: Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/keyguard/clock/MiuiDualClock;->access$100(Lmiui/keyguard/clock/MiuiDualClock;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v3, "content://weather/realtimeLocalWeatherData/4/1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_32

    :goto_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_32

    const-string v3, "city_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_20

    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update local city name, city="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_46} :catch_4e
    .catchall {:try_start_5 .. :try_end_46} :catchall_4c

    if-eqz v2, :cond_58

    :goto_48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_58

    :catchall_4c
    move-exception v0

    goto :goto_59

    :catch_4e
    move-exception v3

    :try_start_4f
    const-string v4, "get city exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_4c

    nop

    if-eqz v2, :cond_58

    goto :goto_48

    :cond_58
    :goto_58
    return-object v1

    :goto_59
    if-eqz v2, :cond_5e

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5e
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiui/keyguard/clock/MiuiDualClock$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    # getter for: Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/keyguard/clock/MiuiDualClock;->access$100(Lmiui/keyguard/clock/MiuiDualClock;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$string;->miui_clock_city_name_local:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, p1

    :goto_14
    move-object p1, v0

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    # getter for: Lmiui/keyguard/clock/MiuiDualClock;->mLocalCity:Landroid/widget/TextView;
    invoke-static {v0}, Lmiui/keyguard/clock/MiuiDualClock;->access$300(Lmiui/keyguard/clock/MiuiDualClock;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    # getter for: Lmiui/keyguard/clock/MiuiDualClock;->mLocalCityChangeListener:Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;
    invoke-static {v0}, Lmiui/keyguard/clock/MiuiDualClock;->access$400(Lmiui/keyguard/clock/MiuiDualClock;)Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    # getter for: Lmiui/keyguard/clock/MiuiDualClock;->mLocalCityChangeListener:Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;
    invoke-static {v0}, Lmiui/keyguard/clock/MiuiDualClock;->access$400(Lmiui/keyguard/clock/MiuiDualClock;)Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;->onLocalCityChanged(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method
