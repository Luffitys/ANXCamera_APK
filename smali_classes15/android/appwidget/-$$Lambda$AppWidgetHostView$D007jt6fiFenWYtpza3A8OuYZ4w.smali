.class public final synthetic Landroid/appwidget/-$$Lambda$AppWidgetHostView$D007jt6fiFenWYtpza3A8OuYZ4w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RemoteViews$OnClickHandler;


# instance fields
.field public final synthetic f$0:Landroid/appwidget/AppWidgetHostView;

.field public final synthetic f$1:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/-$$Lambda$AppWidgetHostView$D007jt6fiFenWYtpza3A8OuYZ4w;->f$0:Landroid/appwidget/AppWidgetHostView;

    iput-object p2, p0, Landroid/appwidget/-$$Lambda$AppWidgetHostView$D007jt6fiFenWYtpza3A8OuYZ4w;->f$1:Landroid/widget/RemoteViews$OnClickHandler;

    return-void
.end method


# virtual methods
.method public final onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 6

    iget-object v0, p0, Landroid/appwidget/-$$Lambda$AppWidgetHostView$D007jt6fiFenWYtpza3A8OuYZ4w;->f$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/-$$Lambda$AppWidgetHostView$D007jt6fiFenWYtpza3A8OuYZ4w;->f$1:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->lambda$getHandler$1$AppWidgetHostView(Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p1

    return p1
.end method
