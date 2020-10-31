.class public final synthetic Landroid/widget/-$$Lambda$TimePicker$2FhAB9WgnLgn4zn4f9rRT7DNfjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TimePicker;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$TimePicker$2FhAB9WgnLgn4zn4f9rRT7DNfjw;->f$0:Landroid/widget/TimePicker;

    iput-object p2, p0, Landroid/widget/-$$Lambda$TimePicker$2FhAB9WgnLgn4zn4f9rRT7DNfjw;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onTimeChanged(Landroid/widget/TimePicker;II)V
    .registers 6

    iget-object v0, p0, Landroid/widget/-$$Lambda$TimePicker$2FhAB9WgnLgn4zn4f9rRT7DNfjw;->f$0:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/-$$Lambda$TimePicker$2FhAB9WgnLgn4zn4f9rRT7DNfjw;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/widget/TimePicker;->lambda$new$0$TimePicker(Landroid/content/Context;Landroid/widget/TimePicker;II)V

    return-void
.end method
