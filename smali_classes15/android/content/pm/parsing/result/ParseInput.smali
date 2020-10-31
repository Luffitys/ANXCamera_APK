.class public interface abstract Landroid/content/pm/parsing/result/ParseInput;
.super Ljava/lang/Object;
.source "ParseInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/parsing/result/ParseInput$Callback;,
        Landroid/content/pm/parsing/result/ParseInput$DeferredError;
    }
.end annotation


# virtual methods
.method public abstract deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract error(I)Landroid/content/pm/parsing/result/ParseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation
.end method

.method public abstract error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation
.end method

.method public abstract error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation
.end method

.method public abstract error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation
.end method

.method public abstract error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation
.end method

.method public abstract skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation
.end method

.method public abstract success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(TResultType;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation
.end method
